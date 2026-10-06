import InitE.BackendStages.TargetChecks.CorrectLabels0_502
import InitE.BackendStages.TargetChecks.CorrectEncode0_502
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_502_eq : LabToTarget.sectionLabels 350852 Reencode0_502.lines [] = (351724, localLabels1_502) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 350852 351724 riscvConfig.encode
    Initial502.lines Reencode0_502.lines [] Reencode0_502_eq).trans
    (localLabels0_502_eq.trans (by kernel_rfl))
#print axioms localLabels1_502_eq
end InitE.BackendStages.TargetChecks.Correct
