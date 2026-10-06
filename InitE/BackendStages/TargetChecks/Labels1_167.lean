import InitE.BackendStages.TargetChecks.Data1_167
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_167_eq : LabToTarget.sectionLabels 50868 Reencode0_167.lines [] = (51176, localLabels1_167) := by
  with_unfolding_all rfl
#print axioms localLabels1_167_eq
end InitE.BackendStages.TargetChecks
