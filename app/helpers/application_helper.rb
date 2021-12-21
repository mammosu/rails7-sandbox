module ApplicationHelper
  def submit_button_name(record)
    record.persisted? ? '更新' : '作成'
  end
end
