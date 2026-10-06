import InitE.BackendStages.TargetChecks.Data1_859
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_859_eq : LabToTarget.sectionLabels 930288 Reencode0_859.lines [] = (931244, localLabels1_859) := by
  with_unfolding_all rfl
#print axioms localLabels1_859_eq
end InitE.BackendStages.TargetChecks
