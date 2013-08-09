module EventsHelper
  def options_for_repeat(key)
    options = {'no_repeat'=>'No repeat', 'yearly'=>'Yearly', 'monthly'=>'Monthly', 'weekly'=>'Weekly', 'not_decided'=>'Not decided'}
    options[key]
  end
end
