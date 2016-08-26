ab_test "Welcome Message" do
  description "which test gets more clicks"
  alternatives 'You Got Test A', 'You Got Test B'
  
  metrics :first_test
end
