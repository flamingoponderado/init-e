import InitE.BackendStages.TargetChecks.Data1_261
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_261_eq : LabToTarget.sectionLabels 153056 Reencode0_261.lines [] = (158276, localLabels1_261) := by
  with_unfolding_all rfl
#print axioms localLabels1_261_eq
end InitE.BackendStages.TargetChecks
