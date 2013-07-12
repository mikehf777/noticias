module Noticias::ApplicationHelper
	def menu(title,path,image)
		link_to raw("#{title}<i class='#{image}'></i>"),path,class: "nav-header active" 
	end
	def toggle_menu(title,path,image)
		link_to raw("<i class='#{image}'></i>#{title}<span class='label sidebar-label label-info'><i class='icon-angle-down'></i> </span>"),path,class: "nav-header",data:{toggle: "collapse"}
	end

	def mensages(path,titulo,cuerpo,tiempo)
		link_to raw("<div class='info'>#{titulo}<span class='timer'>#{tiempo}</span></div><div class='message'>#{cuerpo}</div>"),path                           
	end

	def num_alerts(num)
		link_to raw("<div class='notify'>#{num}</div>"),"#",role: "button",class: "dropdown-toggle", data:{toggle:"dropdown"}
	end

	def logout(title)
	 link_to raw("<i class='icon-signout'></i>#{title}"),destroy_user_session_path,:method => :delete ,tabindex: "-1"
	end

	def usuario(id)
		User.get_user(id).name
	end
	def notified current_user
	@notificaciones = Notification.todas(current_user).pendientes
	end

	def notification_completed notification_id
		n =  Notification.find(notification_id)
		n.update_attribute(:realizada,true)
	end

	def cantidad_notificaciones user_id
		Notification.todas(user_id).count
	end

	def modal_link(titulo,path,botonclass,priority=nil)
	link_to "#{titulo}", "#{path}", class: "#{botonclass}", data: {target: "#NotaModal", toggle: "modal",remote: :true,priority: "#{priority}"}  
	end

end