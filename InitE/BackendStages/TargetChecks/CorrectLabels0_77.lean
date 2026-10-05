import InitE.BackendStages.TargetChecks.CorrectData0_77
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_77_eq : LabToTarget.sectionLabels 7616 Initial77.lines [] = (8016, localLabels0_77) := by
  with_unfolding_all rfl
#print axioms localLabels0_77_eq
end InitE.BackendStages.TargetChecks.Correct
