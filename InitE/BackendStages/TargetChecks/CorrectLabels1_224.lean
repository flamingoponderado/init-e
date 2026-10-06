import InitE.BackendStages.TargetChecks.CorrectLabels0_224
import InitE.BackendStages.TargetChecks.CorrectEncode0_224
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_224_eq : LabToTarget.sectionLabels 85620 Reencode0_224.lines [] = (85688, localLabels1_224) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 85620 85688 riscvConfig.encode
    Initial224.lines Reencode0_224.lines [] Reencode0_224_eq).trans
    (localLabels0_224_eq.trans (by kernel_rfl))
#print axioms localLabels1_224_eq
end InitE.BackendStages.TargetChecks.Correct
