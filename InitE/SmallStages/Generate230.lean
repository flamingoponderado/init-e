import Tools.GenSmallStages
import InitE.SmallStages.Oracles230
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 230 InitE.WordStages.source230.2.1 InitE.WordStages.source230.2.2 InitE.SmallStages.Oracles230.oracle230
