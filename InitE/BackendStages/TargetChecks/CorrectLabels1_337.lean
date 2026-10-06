import InitE.BackendStages.TargetChecks.CorrectLabels0_337
import InitE.BackendStages.TargetChecks.CorrectEncode0_337
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_337_eq : LabToTarget.sectionLabels 233712 Reencode0_337.lines [] = (234040, localLabels1_337) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 233712 234040 riscvConfig.encode
    Initial337.lines Reencode0_337.lines [] Reencode0_337_eq).trans
    (localLabels0_337_eq.trans (by kernel_rfl))
#print axioms localLabels1_337_eq
end InitE.BackendStages.TargetChecks.Correct
