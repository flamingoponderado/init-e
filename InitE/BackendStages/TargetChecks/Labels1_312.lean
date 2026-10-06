import InitE.BackendStages.TargetChecks.Data1_312
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_312_eq : LabToTarget.sectionLabels 207448 Reencode0_312.lines [] = (208252, localLabels1_312) := by
  with_unfolding_all rfl
#print axioms localLabels1_312_eq
end InitE.BackendStages.TargetChecks
