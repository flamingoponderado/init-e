import InitE.BackendStages.TargetChecks.Data1_559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_559_eq : LabToTarget.sectionLabels 403256 Reencode0_559.lines [] = (403700, localLabels1_559) := by
  with_unfolding_all rfl
#print axioms localLabels1_559_eq
end InitE.BackendStages.TargetChecks
