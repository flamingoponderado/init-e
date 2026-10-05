import InitE.BackendStages.TargetChecks.Data1_887
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_887_eq : LabToTarget.sectionLabels 997624 Reencode0_887.lines [] = (997856, localLabels1_887) := by
  with_unfolding_all rfl
#print axioms localLabels1_887_eq
end InitE.BackendStages.TargetChecks
