import InitE.BackendStages.TargetChecks.Data1_835
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_835_eq : LabToTarget.sectionLabels 903300 Reencode0_835.lines [] = (903876, localLabels1_835) := by
  with_unfolding_all rfl
#print axioms localLabels1_835_eq
end InitE.BackendStages.TargetChecks
