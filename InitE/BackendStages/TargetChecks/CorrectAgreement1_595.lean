import InitE.BackendStages.TargetChecks.Data1_595
import InitE.BackendStages.TargetChecks.CorrectData1_595
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks.Correct
theorem output1_595_eq : InitE.BackendStages.TargetChecks.Reencode1_595 = Reencode1_595 := by
  with_unfolding_all rfl
#print axioms output1_595_eq
end InitE.BackendStages.TargetChecks.Correct
