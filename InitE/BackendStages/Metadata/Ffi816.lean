import InitE.BackendStages.Metadata.Data816
import InitE.BackendStages.Filtered816
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis816_eq : ffiLines Filtered816.lines = localFfis816 := by
  with_unfolding_all rfl
theorem ffiStep816 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis816) : LabToTarget.findFfiNames (Filtered816 :: rest) = suffixFfis816 := by
  rw [findFfiNames_section, localFfis816_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep816
end InitE.BackendStages.Metadata
