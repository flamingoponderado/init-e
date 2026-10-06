import InitE.BackendStages.TargetChecks.CorrectLabels0_166
import InitE.BackendStages.TargetChecks.CorrectEncode0_166
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_166_eq : LabToTarget.sectionLabels 50516 Reencode0_166.lines [] = (50868, localLabels1_166) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 50516 50868 riscvConfig.encode
    Initial166.lines Reencode0_166.lines [] Reencode0_166_eq).trans
    (localLabels0_166_eq.trans (by kernel_rfl))
#print axioms localLabels1_166_eq
end InitE.BackendStages.TargetChecks.Correct
