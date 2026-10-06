import InitE.BackendStages.TargetChecks.CorrectLabels0_465
import InitE.BackendStages.TargetChecks.CorrectEncode0_465
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_465_eq : LabToTarget.sectionLabels 336132 Reencode0_465.lines [] = (336168, localLabels1_465) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 336132 336168 riscvConfig.encode
    Initial465.lines Reencode0_465.lines [] Reencode0_465_eq).trans
    (localLabels0_465_eq.trans (by kernel_rfl))
#print axioms localLabels1_465_eq
end InitE.BackendStages.TargetChecks.Correct
