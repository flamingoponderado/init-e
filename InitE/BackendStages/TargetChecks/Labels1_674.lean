import InitE.BackendStages.TargetChecks.Data1_674
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_674_eq : LabToTarget.sectionLabels 594544 Reencode0_674.lines [] = (595544, localLabels1_674) := by
  with_unfolding_all rfl
#print axioms localLabels1_674_eq
end InitE.BackendStages.TargetChecks
