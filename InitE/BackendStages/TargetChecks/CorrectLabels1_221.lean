import InitE.BackendStages.TargetChecks.CorrectLabels0_221
import InitE.BackendStages.TargetChecks.CorrectEncode0_221
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_221_eq : LabToTarget.sectionLabels 82024 Reencode0_221.lines [] = (84404, localLabels1_221) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 82024 84404 riscvConfig.encode
    Initial221.lines Reencode0_221.lines [] Reencode0_221_eq).trans
    (localLabels0_221_eq.trans (by kernel_rfl))
#print axioms localLabels1_221_eq
end InitE.BackendStages.TargetChecks.Correct
