module RunsHelper

  def user_delete_run
    if @run.user_id == current_user.id 
      
     link_to 'Edit', edit_run_path | link_to "Delete", run_path(@run), method: :delete, data: { confirm: 'Are you sure you want to delete this run?'} 
    
    end
  end
end

