import InitE.BackendStages.TargetChecks.CorrectLabels0_96
import InitE.BackendStages.TargetChecks.CorrectEncode0_96
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_96_eq : LabToTarget.sectionLabels 12144 Reencode0_96.lines [] = (12312, localLabels1_96) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 12144 12312 riscvConfig.encode
    Initial96.lines Reencode0_96.lines [] Reencode0_96_eq).trans
    (localLabels0_96_eq.trans (by kernel_rfl))
#print axioms localLabels1_96_eq
end InitE.BackendStages.TargetChecks.Correct
