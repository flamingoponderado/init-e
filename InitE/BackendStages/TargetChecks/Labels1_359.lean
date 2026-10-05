import InitE.BackendStages.TargetChecks.Data1_359
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_359_eq : LabToTarget.sectionLabels 245876 Reencode0_359.lines [] = (246684, localLabels1_359) := by
  with_unfolding_all rfl
#print axioms localLabels1_359_eq
end InitE.BackendStages.TargetChecks
