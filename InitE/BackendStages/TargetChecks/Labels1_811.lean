import InitE.BackendStages.TargetChecks.Data1_811
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_811_eq : LabToTarget.sectionLabels 851784 Reencode0_811.lines [] = (852776, localLabels1_811) := by
  with_unfolding_all rfl
#print axioms localLabels1_811_eq
end InitE.BackendStages.TargetChecks
