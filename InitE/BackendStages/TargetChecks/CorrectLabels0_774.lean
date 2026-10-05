import InitE.BackendStages.TargetChecks.CorrectData0_774
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_774_eq : LabToTarget.sectionLabels 755144 Initial774.lines [] = (756840, localLabels0_774) := by
  with_unfolding_all rfl
#print axioms localLabels0_774_eq
end InitE.BackendStages.TargetChecks.Correct
