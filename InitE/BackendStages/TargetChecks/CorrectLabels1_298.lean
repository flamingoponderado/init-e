import InitE.BackendStages.TargetChecks.CorrectData1_298
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_298_eq : LabToTarget.sectionLabels 196456 Reencode0_298.lines [] = (196760, localLabels1_298) := by
  with_unfolding_all rfl
#print axioms localLabels1_298_eq
end InitE.BackendStages.TargetChecks.Correct
