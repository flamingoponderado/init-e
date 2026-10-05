import InitE.BackendStages.TargetChecks.CorrectData1_145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_145_eq : LabToTarget.sectionLabels 34236 Reencode0_145.lines [] = (34488, localLabels1_145) := by
  with_unfolding_all rfl
#print axioms localLabels1_145_eq
end InitE.BackendStages.TargetChecks.Correct
