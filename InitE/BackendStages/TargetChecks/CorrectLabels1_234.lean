import InitE.BackendStages.TargetChecks.CorrectLabels0_234
import InitE.BackendStages.TargetChecks.CorrectEncode0_234
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_234
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_234_eq : LabToTarget.sectionLabels 110220 Reencode0_234.lines [] = (111580, localLabels1_234) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 110220 111580 riscvConfig.encode
    Initial234.lines Reencode0_234.lines [] Reencode0_234_eq).trans
    (localLabels0_234_eq.trans (by kernel_rfl))
#print axioms localLabels1_234_eq
end InitE.BackendStages.TargetChecks.Correct
