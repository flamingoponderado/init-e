import InitE.BackendStages.TargetChecks.CorrectLabels0_181
import InitE.BackendStages.TargetChecks.CorrectEncode0_181
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_181_eq : LabToTarget.sectionLabels 55136 Reencode0_181.lines [] = (55340, localLabels1_181) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 55136 55340 riscvConfig.encode
    Initial181.lines Reencode0_181.lines [] Reencode0_181_eq).trans
    (localLabels0_181_eq.trans (by kernel_rfl))
#print axioms localLabels1_181_eq
end InitE.BackendStages.TargetChecks.Correct
