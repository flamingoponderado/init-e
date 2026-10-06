import InitE.BackendStages.TargetChecks.CorrectLabels0_107
import InitE.BackendStages.TargetChecks.CorrectEncode0_107
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_107_eq : LabToTarget.sectionLabels 13256 Reencode0_107.lines [] = (13316, localLabels1_107) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 13256 13316 riscvConfig.encode
    Initial107.lines Reencode0_107.lines [] Reencode0_107_eq).trans
    (localLabels0_107_eq.trans (by kernel_rfl))
#print axioms localLabels1_107_eq
end InitE.BackendStages.TargetChecks.Correct
