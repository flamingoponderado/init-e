import InitE.BackendStages.TargetChecks.CorrectLabels0_265
import InitE.BackendStages.TargetChecks.CorrectEncode0_265
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_265
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_265_eq : LabToTarget.sectionLabels 161628 Reencode0_265.lines [] = (162796, localLabels1_265) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 161628 162796 riscvConfig.encode
    Initial265.lines Reencode0_265.lines [] Reencode0_265_eq).trans
    (localLabels0_265_eq.trans (by kernel_rfl))
#print axioms localLabels1_265_eq
end InitE.BackendStages.TargetChecks.Correct
