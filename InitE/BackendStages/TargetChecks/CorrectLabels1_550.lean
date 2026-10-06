import InitE.BackendStages.TargetChecks.CorrectLabels0_550
import InitE.BackendStages.TargetChecks.CorrectEncode0_550
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_550_eq : LabToTarget.sectionLabels 392344 Reencode0_550.lines [] = (392656, localLabels1_550) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 392344 392656 riscvConfig.encode
    Initial550.lines Reencode0_550.lines [] Reencode0_550_eq).trans
    (localLabels0_550_eq.trans (by kernel_rfl))
#print axioms localLabels1_550_eq
end InitE.BackendStages.TargetChecks.Correct
