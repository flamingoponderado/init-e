import InitE.BackendStages.TargetChecks.CorrectLabels0_105
import InitE.BackendStages.TargetChecks.CorrectEncode0_105
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_105
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_105_eq : LabToTarget.sectionLabels 13060 Reencode0_105.lines [] = (13124, localLabels1_105) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 13060 13124 riscvConfig.encode
    Initial105.lines Reencode0_105.lines [] Reencode0_105_eq).trans
    (localLabels0_105_eq.trans (by kernel_rfl))
#print axioms localLabels1_105_eq
end InitE.BackendStages.TargetChecks.Correct
