import InitE.BackendStages.TargetChecks.Data1_452
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_452_eq : LabToTarget.sectionLabels 307500 Reencode0_452.lines [] = (309276, localLabels1_452) := by
  with_unfolding_all rfl
#print axioms localLabels1_452_eq
end InitE.BackendStages.TargetChecks
