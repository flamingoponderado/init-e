import InitE.BackendStages.TargetChecks.CorrectLabels0_210
import InitE.BackendStages.TargetChecks.CorrectEncode0_210
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_210_eq : LabToTarget.sectionLabels 73632 Reencode0_210.lines [] = (73660, localLabels1_210) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 73632 73660 riscvConfig.encode
    Initial210.lines Reencode0_210.lines [] Reencode0_210_eq).trans
    (localLabels0_210_eq.trans (by kernel_rfl))
#print axioms localLabels1_210_eq
end InitE.BackendStages.TargetChecks.Correct
