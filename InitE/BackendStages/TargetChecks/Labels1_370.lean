import InitE.BackendStages.TargetChecks.Data1_370
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_370_eq : LabToTarget.sectionLabels 256904 Reencode0_370.lines [] = (256924, localLabels1_370) := by
  with_unfolding_all rfl
#print axioms localLabels1_370_eq
end InitE.BackendStages.TargetChecks
