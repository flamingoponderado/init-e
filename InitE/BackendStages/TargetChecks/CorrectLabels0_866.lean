import InitE.BackendStages.TargetChecks.CorrectData0_866
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_866_eq : LabToTarget.sectionLabels 951876 Initial866.lines [] = (956168, localLabels0_866) := by
  with_unfolding_all rfl
#print axioms localLabels0_866_eq
end InitE.BackendStages.TargetChecks.Correct
