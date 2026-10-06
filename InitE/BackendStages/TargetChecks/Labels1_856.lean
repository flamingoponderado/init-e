import InitE.BackendStages.TargetChecks.Data1_856
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_856_eq : LabToTarget.sectionLabels 927076 Reencode0_856.lines [] = (928072, localLabels1_856) := by
  with_unfolding_all rfl
#print axioms localLabels1_856_eq
end InitE.BackendStages.TargetChecks
