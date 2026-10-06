import InitE.BackendStages.TargetChecks.CorrectData0_840
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_840_eq : LabToTarget.sectionLabels 906844 Initial840.lines [] = (907424, localLabels0_840) := by
  with_unfolding_all rfl
#print axioms localLabels0_840_eq
end InitE.BackendStages.TargetChecks.Correct
