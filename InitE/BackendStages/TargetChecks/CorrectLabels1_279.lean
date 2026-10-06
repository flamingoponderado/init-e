import InitE.BackendStages.TargetChecks.CorrectLabels0_279
import InitE.BackendStages.TargetChecks.CorrectEncode0_279
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_279_eq : LabToTarget.sectionLabels 179908 Reencode0_279.lines [] = (180480, localLabels1_279) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 179908 180480 riscvConfig.encode
    Initial279.lines Reencode0_279.lines [] Reencode0_279_eq).trans
    (localLabels0_279_eq.trans (by kernel_rfl))
#print axioms localLabels1_279_eq
end InitE.BackendStages.TargetChecks.Correct
