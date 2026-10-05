import Tools.GenSmallStages
import InitE.SmallStages.Oracles365
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 365 InitE.WordStages.source365.2.1 InitE.WordStages.source365.2.2 InitE.SmallStages.Oracles365.oracle365
