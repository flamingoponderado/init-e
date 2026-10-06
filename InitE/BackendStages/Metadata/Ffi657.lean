import InitE.BackendStages.Metadata.Data657
import InitE.BackendStages.Filtered657
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis657_eq : ffiLines Filtered657.lines = localFfis657 := by
  with_unfolding_all rfl
theorem ffiStep657 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis657) : LabToTarget.findFfiNames (Filtered657 :: rest) = suffixFfis657 := by
  rw [findFfiNames_section, localFfis657_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep657
end InitE.BackendStages.Metadata
