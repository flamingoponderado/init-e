import InitE.BackendStages.TargetChecks.CorrectLabels0_478
import InitE.BackendStages.TargetChecks.CorrectEncode0_478
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_478_eq : LabToTarget.sectionLabels 338452 Reencode0_478.lines [] = (339092, localLabels1_478) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 338452 339092 riscvConfig.encode
    Initial478.lines Reencode0_478.lines [] Reencode0_478_eq).trans
    (localLabels0_478_eq.trans (by kernel_rfl))
#print axioms localLabels1_478_eq
end InitE.BackendStages.TargetChecks.Correct
