import InitE.BackendStages.TargetChecks.CorrectLabels0_154
import InitE.BackendStages.TargetChecks.CorrectEncode0_154
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_154_eq : LabToTarget.sectionLabels 40140 Reencode0_154.lines [] = (41384, localLabels1_154) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 40140 41384 riscvConfig.encode
    Initial154.lines Reencode0_154.lines [] Reencode0_154_eq).trans
    (localLabels0_154_eq.trans (by kernel_rfl))
#print axioms localLabels1_154_eq
end InitE.BackendStages.TargetChecks.Correct
