import InitE.BackendStages.TargetChecks.CorrectData0_288
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_288_eq : LabToTarget.sectionLabels 192340 Initial288.lines [] = (192360, localLabels0_288) := by
  with_unfolding_all rfl
#print axioms localLabels0_288_eq
end InitE.BackendStages.TargetChecks.Correct
