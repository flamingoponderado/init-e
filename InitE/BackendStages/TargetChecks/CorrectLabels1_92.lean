import InitE.BackendStages.TargetChecks.CorrectLabels0_92
import InitE.BackendStages.TargetChecks.CorrectEncode0_92
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_92_eq : LabToTarget.sectionLabels 11564 Reencode0_92.lines [] = (11592, localLabels1_92) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 11564 11592 riscvConfig.encode
    Initial92.lines Reencode0_92.lines [] Reencode0_92_eq).trans
    (localLabels0_92_eq.trans (by kernel_rfl))
#print axioms localLabels1_92_eq
end InitE.BackendStages.TargetChecks.Correct
