import InitE.BackendStages.TargetChecks.Data1_874
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_874_eq : LabToTarget.sectionLabels 960756 Reencode0_874.lines [] = (966448, localLabels1_874) := by
  with_unfolding_all rfl
#print axioms localLabels1_874_eq
end InitE.BackendStages.TargetChecks
