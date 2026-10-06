import InitE.BackendStages.TargetChecks.CorrectLabels0_88
import InitE.BackendStages.TargetChecks.CorrectEncode0_88
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_88_eq : LabToTarget.sectionLabels 10644 Reencode0_88.lines [] = (10700, localLabels1_88) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 10644 10700 riscvConfig.encode
    Initial88.lines Reencode0_88.lines [] Reencode0_88_eq).trans
    (localLabels0_88_eq.trans (by kernel_rfl))
#print axioms localLabels1_88_eq
end InitE.BackendStages.TargetChecks.Correct
