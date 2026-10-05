import InitE.BackendStages.TargetChecks.Data1_376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_376_eq : LabToTarget.sectionLabels 257792 Reencode0_376.lines [] = (257816, localLabels1_376) := by
  with_unfolding_all rfl
#print axioms localLabels1_376_eq
end InitE.BackendStages.TargetChecks
