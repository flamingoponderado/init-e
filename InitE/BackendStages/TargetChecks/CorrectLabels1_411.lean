import InitE.BackendStages.TargetChecks.CorrectLabels0_411
import InitE.BackendStages.TargetChecks.CorrectEncode0_411
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_411
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_411_eq : LabToTarget.sectionLabels 281920 Reencode0_411.lines [] = (282276, localLabels1_411) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 281920 282276 riscvConfig.encode
    Initial411.lines Reencode0_411.lines [] Reencode0_411_eq).trans
    (localLabels0_411_eq.trans (by kernel_rfl))
#print axioms localLabels1_411_eq
end InitE.BackendStages.TargetChecks.Correct
