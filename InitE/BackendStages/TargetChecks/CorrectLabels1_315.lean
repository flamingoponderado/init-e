import InitE.BackendStages.TargetChecks.CorrectLabels0_315
import InitE.BackendStages.TargetChecks.CorrectEncode0_315
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_315
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_315_eq : LabToTarget.sectionLabels 209692 Reencode0_315.lines [] = (210516, localLabels1_315) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 209692 210516 riscvConfig.encode
    Initial315.lines Reencode0_315.lines [] Reencode0_315_eq).trans
    (localLabels0_315_eq.trans (by kernel_rfl))
#print axioms localLabels1_315_eq
end InitE.BackendStages.TargetChecks.Correct
