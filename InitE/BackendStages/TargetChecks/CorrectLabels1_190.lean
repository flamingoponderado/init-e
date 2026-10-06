import InitE.BackendStages.TargetChecks.CorrectLabels0_190
import InitE.BackendStages.TargetChecks.CorrectEncode0_190
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_190_eq : LabToTarget.sectionLabels 63880 Reencode0_190.lines [] = (64468, localLabels1_190) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 63880 64468 riscvConfig.encode
    Initial190.lines Reencode0_190.lines [] Reencode0_190_eq).trans
    (localLabels0_190_eq.trans (by kernel_rfl))
#print axioms localLabels1_190_eq
end InitE.BackendStages.TargetChecks.Correct
