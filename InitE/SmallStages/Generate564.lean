import Tools.GenSmallStages
import InitE.SmallStages.Oracles564
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 564 InitE.WordStages.source564.2.1 InitE.WordStages.source564.2.2 InitE.SmallStages.Oracles564.oracle564
