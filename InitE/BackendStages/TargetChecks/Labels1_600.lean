import InitE.BackendStages.TargetChecks.Data1_600
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_600_eq : LabToTarget.sectionLabels 464500 Reencode0_600.lines [] = (465660, localLabels1_600) := by
  with_unfolding_all rfl
#print axioms localLabels1_600_eq
end InitE.BackendStages.TargetChecks
