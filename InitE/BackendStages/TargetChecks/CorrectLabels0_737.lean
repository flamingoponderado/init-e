import InitE.BackendStages.TargetChecks.CorrectData0_737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_737_eq : LabToTarget.sectionLabels 724852 Initial737.lines [] = (725772, localLabels0_737) := by
  with_unfolding_all rfl
#print axioms localLabels0_737_eq
end InitE.BackendStages.TargetChecks.Correct
