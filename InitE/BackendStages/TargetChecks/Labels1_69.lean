import InitE.BackendStages.TargetChecks.Data1_69
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_69_eq : LabToTarget.sectionLabels 6528 Reencode0_69.lines [] = (6556, localLabels1_69) := by
  with_unfolding_all rfl
#print axioms localLabels1_69_eq
end InitE.BackendStages.TargetChecks
