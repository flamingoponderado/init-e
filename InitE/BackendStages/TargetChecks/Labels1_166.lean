import InitE.BackendStages.TargetChecks.Data1_166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_166_eq : LabToTarget.sectionLabels 50516 Reencode0_166.lines [] = (50868, localLabels1_166) := by
  with_unfolding_all rfl
#print axioms localLabels1_166_eq
end InitE.BackendStages.TargetChecks
