import InitE.BackendStages.TargetChecks.CorrectData0_401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_401_eq : LabToTarget.sectionLabels 275944 Initial401.lines [] = (276152, localLabels0_401) := by
  with_unfolding_all rfl
#print axioms localLabels0_401_eq
end InitE.BackendStages.TargetChecks.Correct
